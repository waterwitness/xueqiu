.class public final Lcom/xueqiu/android/stock/c/t$1;
.super Ljava/lang/Object;
.source "QuoteFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/t;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/stock/c/t;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/stock/c/t;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/t$1;->b:Lcom/xueqiu/android/stock/c/t;

    iput-object p2, p0, Lcom/xueqiu/android/stock/c/t$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/t$1;->b:Lcom/xueqiu/android/stock/c/t;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/t;->a(Lcom/xueqiu/android/stock/c/t;)Lcom/xueqiu/android/stockchart/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/d/c;->b()V

    .line 168
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/t$1;->b:Lcom/xueqiu/android/stock/c/t;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/t;->a(Lcom/xueqiu/android/stock/c/t;)Lcom/xueqiu/android/stockchart/d/c;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/t$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/d/c;->b(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/t$1;->b:Lcom/xueqiu/android/stock/c/t;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/t;->b(Lcom/xueqiu/android/stock/c/t;)Lcom/xueqiu/android/stockchart/d/b;

    .line 170
    return-void
.end method
