use polars::frame::DataFrame;
use polars::prelude::*;
use std::path::Path;
// use ndarray::{ArrayBase, DataMut, Dimension, concatenate, Axis};
// use plotters::prelude::*;
// use smartcore::linalg::basic::matrix::DenseMatrix;
// use ndarray::prelude::*;

// rust docs on polars
// https://docs.rs/polars/latest/polars/frame/struct.DataFrame.html

fn read_data_frame_from_csv(csv_file_path: &Path) -> DataFrame {
    CsvReader::from_path(csv_file_path)
        .expect("Cannot open file.")
        .has_header(true)
        .finish()
        .unwrap()
}

fn main() {
    println!("error running example test: ");

    let iris_file_path: &Path = Path::new("../../data/iris_data.csv");
    let iris_df: DataFrame = read_data_frame_from_csv(iris_file_path);

    iris_df.shape();
    let _df_head = iris_df.head(Some(5));

    println!("{}", _df_head);

    let _df_tail = iris_df.tail(Some(5));
    let _df_describe = iris_df.describe(None);

    let _column_names = iris_df.get_column_names();

    // {
    //     column_names
    // }

    // let numeric_iris_df: DataFrame = iris_df.drop("Species")?;

    // println!("{}", numeric_iris_df.mean());
    // println!("{}", numeric_iris_df.max());

    // Convert to an nd array
    // let numeric_iris_ndarray: ArrayBase<_, _> = numeric_iris_df.to_ndarray::<Float64Type>().unwrap();
    // numeric_iris_ndarray
}
