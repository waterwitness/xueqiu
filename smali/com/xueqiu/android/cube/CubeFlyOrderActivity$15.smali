.class final Lcom/xueqiu/android/cube/CubeFlyOrderActivity$15;
.super Ljava/lang/Object;
.source "CubeFlyOrderActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->j()V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;I)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$15;->b:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    iput p2, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$15;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    .line 486
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$15;->b:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->n(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$15;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/f;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/xueqiu/android/cube/f;->price:D

    .line 491
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$15;->b:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->g(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)V

    .line 492
    return-void

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$15;->b:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->n(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$15;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/f;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/xueqiu/android/cube/f;->price:D

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 477
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 482
    return-void
.end method
