.class final Lcom/xueqiu/android/trade/c$11;
.super Ljava/lang/Object;
.source "RefreshTradeTokenHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/xueqiu/android/trade/c$11;->a:Lcom/xueqiu/android/trade/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/xueqiu/android/trade/c$11;->a:Lcom/xueqiu/android/trade/c;

    .line 1049
    iget-object v0, v0, Lcom/xueqiu/android/trade/c;->c:Lcom/xueqiu/android/trade/d;

    .line 226
    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/xueqiu/android/trade/c$11;->a:Lcom/xueqiu/android/trade/c;

    .line 2049
    iget-object v0, v0, Lcom/xueqiu/android/trade/c;->c:Lcom/xueqiu/android/trade/d;

    .line 227
    invoke-interface {v0}, Lcom/xueqiu/android/trade/d;->b()V

    .line 229
    :cond_0
    return-void
.end method
