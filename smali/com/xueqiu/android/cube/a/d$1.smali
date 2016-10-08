.class final Lcom/xueqiu/android/cube/a/d$1;
.super Ljava/lang/Object;
.source "CubeHoldingAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/a/d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/model/Holding;

.field final synthetic b:Lcom/xueqiu/android/cube/a/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/a/d;Lcom/xueqiu/android/cube/model/Holding;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/xueqiu/android/cube/a/d$1;->b:Lcom/xueqiu/android/cube/a/d;

    iput-object p2, p0, Lcom/xueqiu/android/cube/a/d$1;->a:Lcom/xueqiu/android/cube/model/Holding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 119
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/xueqiu/android/cube/a/d$1;->b:Lcom/xueqiu/android/cube/a/d;

    invoke-static {v1}, Lcom/xueqiu/android/cube/a/d;->a(Lcom/xueqiu/android/cube/a/d;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07043d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070070

    const/4 v2, 0x0

    .line 120
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700b1

    new-instance v2, Lcom/xueqiu/android/cube/a/d$1$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/cube/a/d$1$1;-><init>(Lcom/xueqiu/android/cube/a/d$1;)V

    .line 121
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 127
    return-void
.end method
