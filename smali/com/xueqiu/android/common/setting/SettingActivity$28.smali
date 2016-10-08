.class final Lcom/xueqiu/android/common/setting/SettingActivity$28;
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
.field final synthetic a:D

.field final synthetic b:Lcom/xueqiu/android/common/setting/SettingActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/setting/SettingActivity;Lcom/xueqiu/android/base/b/q;D)V
    .locals 1

    .prologue
    .line 740
    iput-object p1, p0, Lcom/xueqiu/android/common/setting/SettingActivity$28;->b:Lcom/xueqiu/android/common/setting/SettingActivity;

    iput-wide p3, p0, Lcom/xueqiu/android/common/setting/SettingActivity$28;->a:D

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 743
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 744
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 740
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1748
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity$28;->b:Lcom/xueqiu/android/common/setting/SettingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/setting/SettingActivity;->f(Lcom/xueqiu/android/common/setting/SettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1749
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity$28;->b:Lcom/xueqiu/android/common/setting/SettingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/setting/SettingActivity;->f(Lcom/xueqiu/android/common/setting/SettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "%.2f\u5143"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/xueqiu/android/common/setting/SettingActivity$28;->a:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 740
    :cond_0
    return-void
.end method
