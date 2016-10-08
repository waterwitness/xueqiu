.class final Lcom/xueqiu/android/base/util/l$3;
.super Ljava/lang/Object;
.source "GroupUtil.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/util/l;->a(Lcom/xueqiu/android/common/b;J)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/community/model/FriendshipGroup;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/b;

.field final synthetic b:J


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/b;J)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/xueqiu/android/base/util/l$3;->a:Lcom/xueqiu/android/common/b;

    iput-wide p2, p0, Lcom/xueqiu/android/base/util/l$3;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 212
    check-cast p1, Ljava/util/List;

    .line 1215
    iget-object v0, p0, Lcom/xueqiu/android/base/util/l$3;->a:Lcom/xueqiu/android/common/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/b;->i()V

    .line 1216
    new-instance v0, Lcom/xueqiu/android/community/a/d;

    invoke-direct {v0}, Lcom/xueqiu/android/community/a/d;-><init>()V

    .line 2100
    iput-object p1, v0, Lcom/xueqiu/android/community/a/d;->a:Ljava/util/List;

    .line 1218
    new-instance v1, Lcom/xueqiu/android/base/util/l$3$1;

    invoke-direct {v1, p0, v0}, Lcom/xueqiu/android/base/util/l$3$1;-><init>(Lcom/xueqiu/android/base/util/l$3;Lcom/xueqiu/android/community/a/d;)V

    .line 2120
    iput-object v1, v0, Lcom/xueqiu/android/community/a/d;->b:Lcom/xueqiu/android/community/a/e;

    .line 1263
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/xueqiu/android/base/util/l$3;->a:Lcom/xueqiu/android/common/b;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070566

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070070

    .line 1264
    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700b1

    new-instance v3, Lcom/xueqiu/android/base/util/l$3$2;

    invoke-direct {v3, p0, v0}, Lcom/xueqiu/android/base/util/l$3$2;-><init>(Lcom/xueqiu/android/base/util/l$3;Lcom/xueqiu/android/community/a/d;)V

    .line 1265
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1274
    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 212
    return-void
.end method
