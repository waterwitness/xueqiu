.class final Lcom/xueqiu/android/common/setting/SettingsPushActivity$4;
.super Ljava/lang/Object;
.source "SettingsPushActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/setting/SettingsPushActivity;->changeReceivePeriod(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/setting/SettingsPushActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/setting/SettingsPushActivity;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/xueqiu/android/common/setting/SettingsPushActivity$4;->a:Lcom/xueqiu/android/common/setting/SettingsPushActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 266
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 267
    return-void
.end method
