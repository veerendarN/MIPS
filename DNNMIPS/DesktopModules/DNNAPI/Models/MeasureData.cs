﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DNNAPI.Models
{
   public class MeasureData
    {
        public string MeasureNumber { get; set; }
        public string MeasureTitle { get; set; }
        public int? DisplayOrder { get; set; }
        public string MeasureTypeDesc { get; set; }
        public string MopdalityDesc { get; set; }
        public string RegsitryDesc { get; set; }
        public string SpecialtyDesc { get; set; }
        public string measureTypeCode { get; set; }
        public string measure_priority { get; set; }
        public string messageDesc { get; set; }
        public string Measure_URL { get; set; }
        public string Message2 { get; set; }
    }
    public class ExcelData
    {
        public int MeasuresCount { get; set; }
        public int OutcomeCoumt { get; set; }
        public int PriorityCount { get; set; }
        public int TotalBonusPoint { get; set; }
        public string SelectedMeasures { get; set; }

    }
    public class ExportToExcelData
    {
        public string MeasureNumber { get; set; }
        public string MeasureTitle { get; set; }
        public string MeasureType { get; set; }
        public string MesureTypeModifier { get; set; }
        public string RegistryDescription { get; set; }
        public string Domain { get; set; }
        public string Speciality { get; set; }
    }

    public static class Extensions
    {
        public static DataTable ToDataTable<T>(this IList<T> data)
        {
            PropertyDescriptorCollection props =
                TypeDescriptor.GetProperties(typeof(T));
            DataTable table = new DataTable();
            for (int i = 0; i < props.Count; i++)
            {
                PropertyDescriptor prop = props[i];
                table.Columns.Add(prop.Name, prop.PropertyType);
            }
            object[] values = new object[props.Count];
            foreach (T item in data)
            {
                for (int i = 0; i < values.Length; i++)
                {
                    values[i] = props[i].GetValue(item);
                }
                table.Rows.Add(values);
            }
            return table;
        }
    }
}
