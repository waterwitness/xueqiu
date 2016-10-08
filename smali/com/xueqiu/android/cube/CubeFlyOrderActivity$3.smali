.class final Lcom/xueqiu/android/cube/CubeFlyOrderActivity$3;
.super Ljava/lang/Object;
.source "CubeFlyOrderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeFlyOrderActivity;
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 625
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$3;->b:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    iput-object p2, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$3;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 628
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$3;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$3;->b:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    const v1, 0x7f0700dc

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 634
    :goto_0
    return-void

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$3;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 632
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$3;->b:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v2, v0, v1}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->a(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;D)V

    goto :goto_0
.end method
