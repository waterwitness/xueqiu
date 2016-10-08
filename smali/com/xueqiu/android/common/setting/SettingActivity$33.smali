.class final Lcom/xueqiu/android/common/setting/SettingActivity$33;
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
    .line 255
    iput-object p1, p0, Lcom/xueqiu/android/common/setting/SettingActivity$33;->a:Lcom/xueqiu/android/common/setting/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1084
    invoke-static {}, Lcom/xueqiu/android/base/h5/f;->a()Lcom/xueqiu/android/base/h5/e;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Lcom/xueqiu/android/base/h5/e;->a()Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/setting/SettingActivity$33$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/setting/SettingActivity$33$1;-><init>(Lcom/xueqiu/android/common/setting/SettingActivity$33;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    .line 268
    return-void
.end method
