using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

public partial class jobCategory
{
    /// <summary>
    /// 職系唯一識別碼，並且自動遞增
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 職系名稱，最大長度為 50 字元，且不可為 NULL
    /// </summary>
    public string name { get; set; } = null!;

    public virtual ICollection<student> student { get; set; } = new List<student>();
}
