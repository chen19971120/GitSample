using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 暫存學習歷程表格，用於儲存學生的學習歷程資料。
/// </summary>
public partial class tempLearningHistory
{
    /// <summary>
    /// 唯一識別資料的主鍵
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 學生的學號
    /// </summary>
    public string? student_id { get; set; }

    /// <summary>
    /// 學生的姓名
    /// </summary>
    public string? full_name { get; set; }

    /// <summary>
    /// 課程的編號
    /// </summary>
    public string? course_id { get; set; }

    /// <summary>
    /// 開設課程的學校名稱
    /// </summary>
    public string? school_name { get; set; }

    /// <summary>
    /// 課程的名稱
    /// </summary>
    public string? course_name { get; set; }

    /// <summary>
    /// 該課程的學分數
    /// </summary>
    public int? credits { get; set; }

    /// <summary>
    /// 課程的開始日期
    /// </summary>
    public DateTime? start_date { get; set; }

    /// <summary>
    /// 課程的結業日期
    /// </summary>
    public DateTime? end_date { get; set; }

    /// <summary>
    /// 原開課日期
    /// </summary>
    public DateTime? original_start_date { get; set; }

    /// <summary>
    /// 原結業日期
    /// </summary>
    public DateTime? original_end_date { get; set; }

    /// <summary>
    /// 課程的方式，例如線上、實體、混合等
    /// </summary>
    public string? course_mode { get; set; }

    /// <summary>
    /// 備註
    /// </summary>
    public string? remark { get; set; }
}
