.class final Lcom/xueqiu/android/trade/c$12$1;
.super Ljava/lang/Object;
.source "RefreshTradeTokenHandler.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c$12;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c$12;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c$12;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/xueqiu/android/trade/c$12$1;->a:Lcom/xueqiu/android/trade/c$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 249
    .line 1252
    iget-object v0, p0, Lcom/xueqiu/android/trade/c$12$1;->a:Lcom/xueqiu/android/trade/c$12;

    iget-object v0, v0, Lcom/xueqiu/android/trade/c$12;->b:Lcom/xueqiu/android/trade/c;

    .line 2049
    iget-object v0, v0, Lcom/xueqiu/android/trade/c;->c:Lcom/xueqiu/android/trade/d;

    .line 1252
    if-eqz v0, :cond_0

    .line 1253
    iget-object v0, p0, Lcom/xueqiu/android/trade/c$12$1;->a:Lcom/xueqiu/android/trade/c$12;

    iget-object v0, v0, Lcom/xueqiu/android/trade/c$12;->b:Lcom/xueqiu/android/trade/c;

    .line 3049
    iget-object v0, v0, Lcom/xueqiu/android/trade/c;->c:Lcom/xueqiu/android/trade/d;

    .line 1253
    invoke-interface {v0}, Lcom/xueqiu/android/trade/d;->a()V

    .line 249
    :cond_0
    return-void
.end method
