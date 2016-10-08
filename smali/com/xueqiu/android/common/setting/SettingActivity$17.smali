.class final Lcom/xueqiu/android/common/setting/SettingActivity$17;
.super Lcom/xueqiu/android/base/b/p;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/setting/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/common/model/RequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/common/setting/SettingActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/setting/SettingActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/xueqiu/android/common/setting/SettingActivity$17;->b:Lcom/xueqiu/android/common/setting/SettingActivity;

    iput-object p2, p0, Lcom/xueqiu/android/common/setting/SettingActivity$17;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity$17;->b:Lcom/xueqiu/android/common/setting/SettingActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/setting/SettingActivity;->i()V

    .line 545
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 546
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 541
    .line 1550
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity$17;->b:Lcom/xueqiu/android/common/setting/SettingActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/setting/SettingActivity;->i()V

    .line 1551
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity$17;->b:Lcom/xueqiu/android/common/setting/SettingActivity;

    iget-object v0, v0, Lcom/xueqiu/android/common/setting/SettingActivity;->M:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const v1, 0x7f0701ee

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/common/setting/SettingActivity$17;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1552
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity$17;->b:Lcom/xueqiu/android/common/setting/SettingActivity;

    iget-object v0, v0, Lcom/xueqiu/android/common/setting/SettingActivity;->t:Landroid/widget/TextView;

    invoke-static {}, Lcom/xueqiu/android/base/r;->a()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/common/setting/SettingActivity$17;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1553
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity$17;->b:Lcom/xueqiu/android/common/setting/SettingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/setting/SettingActivity;->a(Lcom/xueqiu/android/common/setting/SettingActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xueqiu.android.action.stockColorChanged"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 541
    return-void
.end method
