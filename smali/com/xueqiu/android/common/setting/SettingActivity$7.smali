.class final Lcom/xueqiu/android/common/setting/SettingActivity$7;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/setting/SettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/setting/SettingActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/setting/SettingActivity;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/xueqiu/android/common/setting/SettingActivity$7;->a:Lcom/xueqiu/android/common/setting/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x5

    const/4 v1, 0x1

    .line 380
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity$7;->a:Lcom/xueqiu/android/common/setting/SettingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/setting/SettingActivity;->c(Lcom/xueqiu/android/common/setting/SettingActivity;)I

    move-result v0

    if-lt v0, v4, :cond_2

    move v0, v1

    .line 381
    :goto_0
    if-eqz v0, :cond_0

    .line 1041
    invoke-static {}, Lcom/xueqiu/android/base/g;->a()Lcom/xueqiu/android/base/f;

    move-result-object v0

    .line 382
    iget-object v3, p0, Lcom/xueqiu/android/common/setting/SettingActivity$7;->a:Lcom/xueqiu/android/common/setting/SettingActivity;

    invoke-static {v3}, Lcom/xueqiu/android/common/setting/SettingActivity;->a(Lcom/xueqiu/android/common/setting/SettingActivity;)Landroid/content/Context;

    move-result-object v3

    .line 1123
    iput-boolean v1, v0, Lcom/xueqiu/android/base/f;->b:Z

    .line 1124
    const-string v0, "developer_mode"

    invoke-static {v0, v1, v3}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->putBoolean(Ljava/lang/String;ZLandroid/content/Context;)V

    .line 383
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity$7;->a:Lcom/xueqiu/android/common/setting/SettingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/setting/SettingActivity;->d(Lcom/xueqiu/android/common/setting/SettingActivity;)V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity$7;->a:Lcom/xueqiu/android/common/setting/SettingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/setting/SettingActivity;->e(Lcom/xueqiu/android/common/setting/SettingActivity;)I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_3

    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity$7;->a:Lcom/xueqiu/android/common/setting/SettingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/setting/SettingActivity;->e(Lcom/xueqiu/android/common/setting/SettingActivity;)I

    move-result v0

    if-ge v0, v4, :cond_3

    .line 387
    const-string v0, "\u518d\u6309%s\u6b21"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xueqiu/android/common/setting/SettingActivity$7;->a:Lcom/xueqiu/android/common/setting/SettingActivity;

    invoke-static {v3}, Lcom/xueqiu/android/common/setting/SettingActivity;->e(Lcom/xueqiu/android/common/setting/SettingActivity;)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 391
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 380
    goto :goto_0

    .line 388
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity$7;->a:Lcom/xueqiu/android/common/setting/SettingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/setting/SettingActivity;->e(Lcom/xueqiu/android/common/setting/SettingActivity;)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 389
    const-string v0, "\u5df2\u5f00\u542f"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
