.class final Lcom/xueqiu/android/trade/c/e$20;
.super Ljava/lang/Object;
.source "OrderFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c/e;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/e;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/e;)V
    .locals 0

    .prologue
    .line 777
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/e$20;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/EditText;I)V
    .locals 2

    .prologue
    .line 781
    packed-switch p2, :pswitch_data_0

    .line 791
    :goto_0
    return-void

    .line 783
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$20;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->T(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 786
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$20;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->U(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 781
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
