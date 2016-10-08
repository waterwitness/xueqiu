.class final Lcom/xueqiu/android/trade/c$5;
.super Ljava/lang/Object;
.source "RefreshTradeTokenHandler.java"

# interfaces
.implements Lcom/xueqiu/android/trade/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c;
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/xueqiu/android/trade/c$5;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/xueqiu/android/trade/c$5;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/xueqiu/android/trade/c$5;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c$5;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 439
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 443
    return-void
.end method
