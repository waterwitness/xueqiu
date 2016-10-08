.class final Lcom/xueqiu/android/stock/LHBActivity$1;
.super Ljava/lang/Object;
.source "LHBActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/LHBActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/LHBActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/LHBActivity;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/xueqiu/android/stock/LHBActivity$1;->a:Lcom/xueqiu/android/stock/LHBActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/stock/LHBActivity$1;->a:Lcom/xueqiu/android/stock/LHBActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/LHBActivity;->a(Lcom/xueqiu/android/stock/LHBActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 62
    if-lez v2, :cond_1

    .line 63
    new-array v3, v2, [Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 65
    iget-object v0, p0, Lcom/xueqiu/android/stock/LHBActivity$1;->a:Lcom/xueqiu/android/stock/LHBActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/LHBActivity;->a(Lcom/xueqiu/android/stock/LHBActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/xueqiu/android/base/util/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 64
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/xueqiu/android/stock/LHBActivity$1;->a:Lcom/xueqiu/android/stock/LHBActivity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/LHBActivity;->b(Lcom/xueqiu/android/stock/LHBActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0085

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 69
    iget-object v1, p0, Lcom/xueqiu/android/stock/LHBActivity$1;->a:Lcom/xueqiu/android/stock/LHBActivity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/LHBActivity;->c(Lcom/xueqiu/android/stock/LHBActivity;)I

    move-result v1

    new-instance v2, Lcom/xueqiu/android/stock/LHBActivity$1$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/stock/LHBActivity$1$1;-><init>(Lcom/xueqiu/android/stock/LHBActivity$1;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 79
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 80
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 82
    :cond_1
    return-void
.end method
