.class final Lcom/xueqiu/android/base/util/l$3$1;
.super Ljava/lang/Object;
.source "GroupUtil.java"

# interfaces
.implements Lcom/xueqiu/android/community/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/util/l$3;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/a/d;

.field final synthetic b:Lcom/xueqiu/android/base/util/l$3;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/util/l$3;Lcom/xueqiu/android/community/a/d;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/xueqiu/android/base/util/l$3$1;->b:Lcom/xueqiu/android/base/util/l$3;

    iput-object p2, p0, Lcom/xueqiu/android/base/util/l$3$1;->a:Lcom/xueqiu/android/community/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .prologue
    .line 221
    if-nez p1, :cond_0

    .line 222
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/xueqiu/android/base/util/l$3$1;->b:Lcom/xueqiu/android/base/util/l$3;

    iget-object v1, v1, Lcom/xueqiu/android/base/util/l$3;->a:Lcom/xueqiu/android/common/b;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 223
    const v1, 0x7f070439

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 224
    new-instance v1, Lcom/xueqiu/android/base/util/u;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/xueqiu/android/base/util/u;-><init>(I)V

    .line 225
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 226
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/xueqiu/android/base/util/l$3$1;->b:Lcom/xueqiu/android/base/util/l$3;

    iget-object v2, v2, Lcom/xueqiu/android/base/util/l$3;->a:Lcom/xueqiu/android/common/b;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0700ca

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070070

    const/4 v3, 0x0

    .line 227
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700b1

    new-instance v3, Lcom/xueqiu/android/base/util/l$3$1$1;

    invoke-direct {v3, p0, v0}, Lcom/xueqiu/android/base/util/l$3$1$1;-><init>(Lcom/xueqiu/android/base/util/l$3$1;Landroid/widget/EditText;)V

    .line 228
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 256
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/base/util/l$3$1;->a:Lcom/xueqiu/android/community/a/d;

    .line 1124
    invoke-virtual {v1, p1}, Lcom/xueqiu/android/community/a/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/FriendshipGroup;

    .line 1125
    iget-object v2, v1, Lcom/xueqiu/android/community/a/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/FriendshipGroup;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1126
    iget-object v2, v1, Lcom/xueqiu/android/community/a/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/FriendshipGroup;->getId()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1130
    :goto_1
    invoke-virtual {v1}, Lcom/xueqiu/android/community/a/d;->notifyDataSetChanged()V

    goto :goto_0

    .line 1128
    :cond_1
    iget-object v2, v1, Lcom/xueqiu/android/community/a/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/FriendshipGroup;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1
.end method
