.class final Lcom/xueqiu/android/stock/h$3;
.super Ljava/lang/Object;
.source "InvestmentCalendarActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/h;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/h;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/h;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/xueqiu/android/stock/h$3;->a:Lcom/xueqiu/android/stock/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 338
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 350
    :goto_0
    :pswitch_0
    return-void

    .line 340
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/h$3;->a:Lcom/xueqiu/android/stock/h;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/h;->a(Lcom/xueqiu/android/stock/h;I)I

    .line 341
    iget-object v0, p0, Lcom/xueqiu/android/stock/h$3;->a:Lcom/xueqiu/android/stock/h;

    invoke-static {v0}, Lcom/xueqiu/android/stock/h;->g(Lcom/xueqiu/android/stock/h;)I

    .line 342
    iget-object v0, p0, Lcom/xueqiu/android/stock/h$3;->a:Lcom/xueqiu/android/stock/h;

    invoke-static {v0}, Lcom/xueqiu/android/stock/h;->h(Lcom/xueqiu/android/stock/h;)V

    goto :goto_0

    .line 345
    :pswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/stock/h$3;->a:Lcom/xueqiu/android/stock/h;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/h;->a(Lcom/xueqiu/android/stock/h;I)I

    .line 346
    iget-object v0, p0, Lcom/xueqiu/android/stock/h$3;->a:Lcom/xueqiu/android/stock/h;

    invoke-static {v0}, Lcom/xueqiu/android/stock/h;->i(Lcom/xueqiu/android/stock/h;)I

    .line 347
    iget-object v0, p0, Lcom/xueqiu/android/stock/h$3;->a:Lcom/xueqiu/android/stock/h;

    invoke-static {v0}, Lcom/xueqiu/android/stock/h;->h(Lcom/xueqiu/android/stock/h;)V

    goto :goto_0

    .line 338
    :pswitch_data_0
    .packed-switch 0x7f0e0638
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
