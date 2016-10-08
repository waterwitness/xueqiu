.class final Lcom/xueqiu/android/stock/h$6;
.super Ljava/lang/Object;
.source "InvestmentCalendarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/h;->a(Ljava/util/ArrayList;Z)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xueqiu/android/stock/h;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/h;I)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/xueqiu/android/stock/h$6;->b:Lcom/xueqiu/android/stock/h;

    iput p2, p0, Lcom/xueqiu/android/stock/h$6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 562
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 563
    iget v1, p0, Lcom/xueqiu/android/stock/h$6;->a:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 564
    iget-object v1, p0, Lcom/xueqiu/android/stock/h$6;->b:Lcom/xueqiu/android/stock/h;

    iget-object v1, v1, Lcom/xueqiu/android/stock/h;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 565
    return-void
.end method
