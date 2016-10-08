.class final Lcom/xueqiu/android/common/setting/SettingActivity$23;
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
    .line 206
    iput-object p1, p0, Lcom/xueqiu/android/common/setting/SettingActivity$23;->a:Lcom/xueqiu/android/common/setting/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity$23;->a:Lcom/xueqiu/android/common/setting/SettingActivity;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/setting/SettingActivity;->changeStockColor(Landroid/view/View;)V

    .line 210
    return-void
.end method
