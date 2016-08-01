var debug = process.env.NODE_ENV !== "production";
var webpack = require('webpack');
var ExtractTextPlugin = require("extract-text-webpack-plugin");

plugins = debug ? [] : [
  new webpack.optimize.DedupePlugin(),
  new webpack.optimize.OccurenceOrderPlugin(),
  new webpack.optimize.UglifyJsPlugin({ mangle: false, sourcemap: false })
]

plugins.push(
  new ExtractTextPlugin("style.min.css", {
    allChunks: true
  })
)

module.exports = {
  context: __dirname,
  devtool: debug ? "inline-sourcemap" : null,
  entry: "./src/web/assets/app.js",
  output: {
    path: __dirname + "/public/",
    filename: "app.min.js"
  },
  module: {
      loaders: [
        { test: /\.css$/, loader: "style!css" },
        {
          test: /\.js$/,
          exclude: /(node_modules|bower_components)/,
          loader: 'babel', // 'babel-loader' is also a legal name to reference
          query: {
            presets: ['es2015']
          }
        },
        {
          test: /\.styl$/,
          loader: ExtractTextPlugin.extract("style-loader", "css-loader!stylus-loader?paths=node_modules/stylus/")
        }
      ],
      resolve: {
        extensions: ['', '.js', '.styl']
      }
  },
  plugins: plugins,
  stylus: {
    use: [
      require('jeet')(),
      require('rupture')()
    ]
  }
};
