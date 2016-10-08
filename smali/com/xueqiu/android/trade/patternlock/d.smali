.class public final Lcom/xueqiu/android/trade/patternlock/d;
.super Ljava/lang/Object;
.source "PatternLockUtils.java"


# direct methods
.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    const-string v0, "pref_key_pattern_sha1"

    sget-object v1, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->DEFAULT_PATTERN_SHA1:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xueqiu/android/trade/SetPatternActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    const-string v1, "extra_request_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 62
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lcom/xueqiu/android/trade/patternlock/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
