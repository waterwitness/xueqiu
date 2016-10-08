.class final Lcom/xueqiu/android/common/account/a$2;
.super Landroid/content/BroadcastReceiver;
.source "AnonymousHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/a;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/xueqiu/android/common/account/a$2;->a:Lcom/xueqiu/android/common/account/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/xueqiu/android/common/account/a$2;->a:Lcom/xueqiu/android/common/account/a;

    iget-object v0, v0, Lcom/xueqiu/android/common/account/a;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 171
    return-void
.end method
