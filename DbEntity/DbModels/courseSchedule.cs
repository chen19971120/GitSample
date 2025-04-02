using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 課程上課時段資料表，儲存每門課程的上課時段資訊
/// </summary>
public partial class courseSchedule
{
    /// <summary>
    /// 時段ID，主鍵，自動遞增
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 課程ID，參照課程資料表的ID
    /// </summary>
    public int? courseData_id { get; set; }

    /// <summary>
    /// 星期幾，1=星期一, 2=星期二, 3=星期三, ...
    /// </summary>
    public int? weekday { get; set; }

    /// <summary>
    /// 上課時間，描述具體的上課時段
    /// </summary>
    public TimeOnly? start_time { get; set; }

    /// <summary>
    /// 下課時間，描述具體的下課時段
    /// </summary>
    public TimeOnly? end_time { get; set; }

    public virtual courseData? courseData { get; set; }

    public virtual ICollection<coursePlan> coursePlan { get; set; } = new List<coursePlan>();
}
