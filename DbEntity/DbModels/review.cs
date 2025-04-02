using System;
using System.Collections.Generic;

namespace DbEntity.DbModels;

/// <summary>
/// 審核資料表，儲存每個學校的課程申請審核信息
/// </summary>
public partial class review
{
    /// <summary>
    /// 審核ID，主鍵，自動遞增
    /// </summary>
    public int id { get; set; }

    /// <summary>
    /// 學校ID，參照學校資料表的ID
    /// </summary>
    public int? school_id { get; set; }

    /// <summary>
    /// 申請類型，1=新課程申請，2=續期申請，3=其他申請
    /// </summary>
    public int? application_type { get; set; }

    /// <summary>
    /// 開課地點
    /// </summary>
    public string? location { get; set; }

    /// <summary>
    /// 聯絡人姓名
    /// </summary>
    public string? contact_name { get; set; }

    /// <summary>
    /// 聯絡人電話
    /// </summary>
    public string? contact_phone { get; set; }

    /// <summary>
    /// 聯絡人信箱
    /// </summary>
    public string? contact_email { get; set; }

    /// <summary>
    /// 傳真號碼
    /// </summary>
    public string? fax { get; set; }

    /// <summary>
    /// 初審結果，1=通過，2=未通過
    /// </summary>
    public int? first_review_result { get; set; }

    /// <summary>
    /// 初審時間
    /// </summary>
    public DateTime? first_review_date { get; set; }

    /// <summary>
    /// 訓練執行分數
    /// </summary>
    public int? execution_score { get; set; }

    /// <summary>
    /// 訓練執行說明
    /// </summary>
    public string? execution_description { get; set; }

    /// <summary>
    /// 學生參與度分數
    /// </summary>
    public int? participation_score { get; set; }

    /// <summary>
    /// 學生參與度說明
    /// </summary>
    public string? participation_description { get; set; }

    /// <summary>
    /// 環境設備分數
    /// </summary>
    public int? environment_score { get; set; }

    /// <summary>
    /// 環境設備說明
    /// </summary>
    public string? environment_description { get; set; }

    /// <summary>
    /// 複審結果，1=通過，2=未通過
    /// </summary>
    public int? second_review_result { get; set; }

    /// <summary>
    /// 複審時間
    /// </summary>
    public DateTime? second_review_date { get; set; }

    /// <summary>
    /// 備註
    /// </summary>
    public string? notes { get; set; }

    /// <summary>
    /// 寄送時間
    /// </summary>
    public DateTime? sent_time { get; set; }

    /// <summary>
    /// 通過時間
    /// </summary>
    public DateTime? approved_time { get; set; }

    public virtual ICollection<reviewFile> reviewFile { get; set; } = new List<reviewFile>();

    public virtual school? school { get; set; }
}
