.class public Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;
.super Ljava/lang/Object;
.source "DefaultPrefs.java"


# static fields
.field public static final AD_LAUNCH_JSON:Ljava/lang/String; = "ad_launch_json"

.field public static final AD_PULL_DOWN:Ljava/lang/String; = "ad_pull_down"

.field public static final AD_SEARCH_BANNER_JSON:Ljava/lang/String; = "ad_search_banner_json"

.field public static final AD_SEARCH_TEXT_JSON:Ljava/lang/String; = "ad_search_text_json"

.field public static final ANDROID_APK_VERSION_CANCEL_TIME:Ljava/lang/String; = "android_apk_version_cancel_time"

.field public static final ANDROID_APK_VERSION_CONFIG:Ljava/lang/String; = "android_apk_version_config"

.field public static final ANDROID_APK_VERSION_CONFIG_UPDATE:Ljava/lang/String; = "android_apk_version_config_update"

.field public static final BOUND_INFO:Ljava/lang/String; = "bound_info"

.field public static final COMMENT_SORT:Ljava/lang/String; = "comment_sort"

.field public static final CURRENT_VERSION_CODE:Ljava/lang/String; = "current_version_code"

.field public static final DEFAULT_PATTERN_SHA1:Ljava/lang/String;

.field public static final DEVELOPER_MODE:Ljava/lang/String; = "developer_mode"

.field public static final DEVICE_ID:Ljava/lang/String; = "device_id"

.field public static final ENTER_BUTTON_CONFIG:Ljava/lang/String; = "enter_button_config"

.field public static final ENTER_BUTTON_CONFIG_UPDATED:Ljava/lang/String; = "enter_button_config_updated"

.field public static final GENERAL_NOTICE_JSON:Ljava/lang/String; = "general_notice_json"

.field public static final HAS_VISITED_USER_GUIDE:Ljava/lang/String; = "has_visited_user_guide"

.field public static final HISTORY_SEARCH_KEY:Ljava/lang/String; = "hostory_Search"

.field public static final INVESTMENT_CALENDAR_DATA_CACHE_OBJ:Ljava/lang/String; = "investment_calendar_data_cache_obj"

.field public static final KEY_PATTERN_SHA1:Ljava/lang/String; = "pref_key_pattern_sha1"

.field public static final LAST_UPDATE_FRIENDS_TIME:Ljava/lang/String; = "last_update_friends_time"

.field public static final LOGON_USER_INFO_FILE_NAME:Ljava/lang/String; = "logon_user_info_file_name"

.field public static final PAY_MENTION_ANSWER_POSTFIX:Ljava/lang/String; = "pay_mention_answer_postfix"

.field public static final PAY_MENTION_REFUSE_POSTFIX:Ljava/lang/String; = "pay_mention_refuse_postfix"

.field public static final PRIVATE_FUND_CERTIFICIED:Ljava/lang/String; = "private_fund_certified"

.field private static final QMAS_ROUTES:Ljava/lang/String; = "qmas_routes"

.field public static final QMAS_ROUTES_UPDATED_TIME:Ljava/lang/String; = "qmas_routes_updated_time"

.field public static final QUOTE_TYPE_FILED_MAP_CONFIG:Ljava/lang/String; = "quote_type_filed_map_config"

.field public static final QUOTE_TYPE_FILED_MAP_CONFIG_UPDATED:Ljava/lang/String; = "quote_type_filed_map_config_updated"

.field public static final RECENTLY_MENTIONED_STOCK:Ljava/lang/String; = "recently_mentioned_stock"

.field public static final RECENTLY_MENTIONED_USER:Ljava/lang/String; = "recently_mentioned_user"

.field public static final SEARCH_HISTORY:Ljava/lang/String; = "search_history"

.field public static final SERVER_IP_ADDRESS_FILE_NAME:Ljava/lang/String; = "server_ip_address_file_name"

.field public static final SERVICE_MENU_FILENAME:Ljava/lang/String; = "service_menu"

.field private static final TAG:Ljava/lang/String; = "Preferences"

.field public static final TIME_ZONE:Ljava/lang/String; = "time_zone"

.field public static final USER_ACCOUNT:Ljava/lang/String; = "user_account"

.field public static final USER_GROUPS_CACHE_DATA:Ljava/lang/String; = "user_groups_cache_data"

.field public static final USER_MOBILE_SETTING:Ljava/lang/String; = "user_mobile_setting"

.field public static final US_ETF_CATEGORY:Ljava/lang/String; = "us_etf_category"

.field public static final US_ETF_CATEGORY_UPDATED:Ljava/lang/String; = "us_etf_category_updated"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    sput-object v0, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->DEFAULT_PATTERN_SHA1:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 266
    invoke-static {p0}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 267
    return-void
.end method

.method public static getBoolean(Ljava/lang/String;ZLandroid/content/Context;)Z
    .locals 1

    .prologue
    .line 230
    invoke-static {p2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 234
    invoke-static {p0}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static getFloat(Ljava/lang/String;FLandroid/content/Context;)F
    .locals 1

    .prologue
    .line 226
    invoke-static {p2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static getInt(Ljava/lang/String;ILandroid/content/Context;)I
    .locals 1

    .prologue
    .line 218
    invoke-static {p2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLong(Ljava/lang/String;JLandroid/content/Context;)J
    .locals 3

    .prologue
    .line 222
    invoke-static {p3}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getObject(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 147
    const-string v0, ""

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 151
    :try_start_0
    invoke-virtual {v1, v0, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getObject(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 160
    const-string v0, ""

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 164
    :try_start_0
    invoke-virtual {v1, v0, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 206
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    invoke-static {p2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringSet(Ljava/lang/String;Ljava/util/Set;Landroid/content/Context;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    invoke-static {p2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getUserPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 1182
    iget-object v0, v0, Lcom/xueqiu/android/base/t;->a:Ljava/lang/String;

    .line 178
    if-nez v0, :cond_0

    .line 179
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "you must be logged in when getting a user preferences."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    const-string v0, "user_%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 2069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 2077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 181
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 191
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 192
    const-string v1, "current_version_code"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static putBoolean(Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 1

    .prologue
    .line 258
    invoke-static {p2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 259
    return-void
.end method

.method public static putFloat(Ljava/lang/String;FLandroid/content/Context;)V
    .locals 1

    .prologue
    .line 254
    invoke-static {p2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 255
    return-void
.end method

.method public static putInt(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 1

    .prologue
    .line 246
    invoke-static {p2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 247
    return-void
.end method

.method public static putLong(Ljava/lang/String;JLandroid/content/Context;)V
    .locals 1

    .prologue
    .line 250
    invoke-static {p3}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 251
    return-void
.end method

.method public static putString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 238
    invoke-static {p2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 239
    return-void
.end method

.method public static putStringSet(Ljava/lang/String;Ljava/util/Set;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 242
    invoke-static {p2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 243
    return-void
.end method

.method public static qmasRoutesKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 274
    const-string v0, "%s_%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "qmas_routes"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 3041
    invoke-static {}, Lcom/xueqiu/android/base/g;->a()Lcom/xueqiu/android/base/f;

    .line 274
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xueqiu/android/base/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static qmasRoutesUpdateTimeKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 278
    const-string v0, "%s_%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "qmas_routes_updated_time"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 4041
    invoke-static {}, Lcom/xueqiu/android/base/g;->a()Lcom/xueqiu/android/base/f;

    .line 278
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xueqiu/android/base/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static remove(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 262
    invoke-static {p1}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 263
    return-void
.end method

.method public static storeObject(Landroid/content/SharedPreferences;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 121
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 122
    if-eqz p1, :cond_0

    .line 123
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 124
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 129
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 130
    return-void

    .line 127
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static storeObject(Landroid/content/SharedPreferences;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 134
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 135
    if-eqz p2, :cond_0

    .line 136
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 137
    invoke-virtual {v1, p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-interface {v0, p3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 142
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 143
    return-void

    .line 140
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, p3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static updateVersionCode(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 201
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 202
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "current_version_code"

    const/16 v2, 0x65

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 203
    return-void
.end method
