.class final Lcom/xueqiu/android/base/util/l$1$4$1;
.super Ljava/lang/Object;
.source "GroupUtil.java"

# interfaces
.implements Lcom/xueqiu/android/stock/a/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/util/l$1$4;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/a/n;

.field final synthetic b:Lcom/xueqiu/android/base/util/l$1$4;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/util/l$1$4;Lcom/xueqiu/android/stock/a/n;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/xueqiu/android/base/util/l$1$4$1;->b:Lcom/xueqiu/android/base/util/l$1$4;

    iput-object p2, p0, Lcom/xueqiu/android/base/util/l$1$4$1;->a:Lcom/xueqiu/android/stock/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 103
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/xueqiu/android/base/util/l$1$4$1;->b:Lcom/xueqiu/android/base/util/l$1$4;

    iget-object v1, v1, Lcom/xueqiu/android/base/util/l$1$4;->a:Lcom/xueqiu/android/base/util/l$1;

    iget-object v1, v1, Lcom/xueqiu/android/base/util/l$1;->a:Lcom/xueqiu/android/common/b;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 104
    const v1, 0x7f070439

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 105
    new-instance v1, Lcom/xueqiu/android/base/util/u;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/xueqiu/android/base/util/u;-><init>(I)V

    .line 106
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 107
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/xueqiu/android/base/util/l$1$4$1;->b:Lcom/xueqiu/android/base/util/l$1$4;

    iget-object v2, v2, Lcom/xueqiu/android/base/util/l$1$4;->a:Lcom/xueqiu/android/base/util/l$1;

    iget-object v2, v2, Lcom/xueqiu/android/base/util/l$1;->a:Lcom/xueqiu/android/common/b;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0700ca

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070070

    const/4 v3, 0x0

    .line 108
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700b1

    new-instance v3, Lcom/xueqiu/android/base/util/l$1$4$1$1;

    invoke-direct {v3, p0, v0}, Lcom/xueqiu/android/base/util/l$1$4$1$1;-><init>(Lcom/xueqiu/android/base/util/l$1$4$1;Landroid/widget/EditText;)V

    .line 109
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 139
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/base/util/l$1$4$1;->a:Lcom/xueqiu/android/stock/a/n;

    .line 1124
    invoke-virtual {v1, p1}, Lcom/xueqiu/android/stock/a/n;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/Portfolio;

    .line 1125
    iget-object v2, v1, Lcom/xueqiu/android/stock/a/n;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Portfolio;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1126
    iget-object v2, v1, Lcom/xueqiu/android/stock/a/n;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Portfolio;->getId()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1130
    :goto_1
    invoke-virtual {v1}, Lcom/xueqiu/android/stock/a/n;->notifyDataSetChanged()V

    goto :goto_0

    .line 1128
    :cond_1
    iget-object v2, v1, Lcom/xueqiu/android/stock/a/n;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Portfolio;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1
.end method
