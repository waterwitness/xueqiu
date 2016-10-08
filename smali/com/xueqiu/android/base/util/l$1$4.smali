.class final Lcom/xueqiu/android/base/util/l$1$4;
.super Ljava/lang/Object;
.source "GroupUtil.java"

# interfaces
.implements Lrx/c/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/util/l$1;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/g",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/stock/model/Portfolio;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/stock/model/Portfolio;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/util/l$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/util/l$1;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/xueqiu/android/base/util/l$1$4;->a:Lcom/xueqiu/android/base/util/l$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 93
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    .line 1096
    new-instance v1, Lcom/xueqiu/android/stock/a/n;

    invoke-direct {v1}, Lcom/xueqiu/android/stock/a/n;-><init>()V

    .line 2100
    iput-object p1, v1, Lcom/xueqiu/android/stock/a/n;->a:Ljava/util/List;

    .line 1098
    invoke-virtual {v1, p2}, Lcom/xueqiu/android/stock/a/n;->a(Ljava/util/List;)V

    .line 1099
    new-instance v0, Lcom/xueqiu/android/base/util/l$1$4$1;

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/base/util/l$1$4$1;-><init>(Lcom/xueqiu/android/base/util/l$1$4;Lcom/xueqiu/android/stock/a/n;)V

    .line 2120
    iput-object v0, v1, Lcom/xueqiu/android/stock/a/n;->b:Lcom/xueqiu/android/stock/a/o;

    .line 1146
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/xueqiu/android/base/util/l$1$4;->a:Lcom/xueqiu/android/base/util/l$1;

    iget-object v0, v0, Lcom/xueqiu/android/base/util/l$1;->a:Lcom/xueqiu/android/common/b;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/xueqiu/android/base/util/l$1$4;->a:Lcom/xueqiu/android/base/util/l$1;

    iget v0, v0, Lcom/xueqiu/android/base/util/l$1;->c:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const v0, 0x7f07010c

    :goto_0
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f070070

    .line 1147
    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0700b1

    new-instance v3, Lcom/xueqiu/android/base/util/l$1$4$2;

    invoke-direct {v3, p0, v1}, Lcom/xueqiu/android/base/util/l$1$4$2;-><init>(Lcom/xueqiu/android/base/util/l$1$4;Lcom/xueqiu/android/stock/a/n;)V

    .line 1148
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1154
    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 93
    return-object v4

    .line 1146
    :cond_0
    const v0, 0x7f07010a

    goto :goto_0
.end method
