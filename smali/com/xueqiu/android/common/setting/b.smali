.class final Lcom/xueqiu/android/common/setting/b;
.super Lcom/xueqiu/android/view/wheel/a/b;
.source "SettingsPushActivity.java"


# instance fields
.field a:[Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/common/setting/SettingsPushActivity;


# direct methods
.method protected constructor <init>(Lcom/xueqiu/android/common/setting/SettingsPushActivity;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 316
    iput-object p1, p0, Lcom/xueqiu/android/common/setting/b;->b:Lcom/xueqiu/android/common/setting/SettingsPushActivity;

    .line 317
    invoke-direct {p0, p2}, Lcom/xueqiu/android/view/wheel/a/b;-><init>(Landroid/content/Context;)V

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/b;->a:[Ljava/lang/String;

    .line 319
    invoke-virtual {p0}, Lcom/xueqiu/android/common/setting/b;->b()V

    .line 320
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/b;->a:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 328
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/view/wheel/a/b;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 329
    return-object v0
.end method

.method protected final a(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/b;->a:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method
