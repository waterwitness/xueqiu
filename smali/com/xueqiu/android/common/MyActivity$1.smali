.class final Lcom/xueqiu/android/common/MyActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/MyActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/MyActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/MyActivity;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/xueqiu/android/common/MyActivity$1;->a:Lcom/xueqiu/android/common/MyActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/xueqiu/android/common/MyActivity$1;->a:Lcom/xueqiu/android/common/MyActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/MyActivity;->finish()V

    .line 122
    return-void
.end method
