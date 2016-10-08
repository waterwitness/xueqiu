.class final Lcom/xueqiu/android/trade/c/e$19;
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
    .line 735
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/e$19;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/EditText;I)V
    .locals 3

    .prologue
    .line 739
    sparse-switch p2, :sswitch_data_0

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 741
    :sswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$19;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->T(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 744
    :sswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$19;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->U(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e$19;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/e;->U(Lcom/xueqiu/android/trade/c/e;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    const-string v2, "00"

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 747
    :sswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$19;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->q(Lcom/xueqiu/android/trade/c/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$19;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->V(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/b;->a(I)V

    goto :goto_0

    .line 752
    :sswitch_3
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$19;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->q(Lcom/xueqiu/android/trade/c/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$19;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->W(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/b;->a(I)V

    goto :goto_0

    .line 757
    :sswitch_4
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$19;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->q(Lcom/xueqiu/android/trade/c/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$19;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->X(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/b;->a(I)V

    goto :goto_0

    .line 762
    :sswitch_5
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$19;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->q(Lcom/xueqiu/android/trade/c/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$19;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->Y(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/b/b;->a(I)V

    goto :goto_0

    .line 739
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_0
        0x186ad -> :sswitch_1
        0x186b4 -> :sswitch_2
        0x186b5 -> :sswitch_3
        0x186b6 -> :sswitch_4
        0x186b7 -> :sswitch_5
    .end sparse-switch
.end method
