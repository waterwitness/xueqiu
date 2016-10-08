.class final Lcom/xueqiu/android/community/f$4;
.super Ljava/lang/Object;
.source "FindPeopleFromWeiBoActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/f;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/f;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/f;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/xueqiu/android/community/f$4;->a:Lcom/xueqiu/android/community/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 285
    iget-object v0, p0, Lcom/xueqiu/android/community/f$4;->a:Lcom/xueqiu/android/community/f;

    invoke-static {v0}, Lcom/xueqiu/android/community/f;->a(Lcom/xueqiu/android/community/f;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    .line 1367
    iget-object v0, v0, Lcom/xueqiu/android/common/r;->c:Lcom/xueqiu/android/common/a/d;

    .line 285
    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/a/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 286
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/xueqiu/android/community/f$4;->a:Lcom/xueqiu/android/community/f;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/f;->f()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array v2, v5, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const-string v4, "\u5220\u9664\u63a8\u8350"

    aput-object v4, v2, v3

    new-instance v3, Lcom/xueqiu/android/community/f$4$1;

    invoke-direct {v3, p0, v0}, Lcom/xueqiu/android/community/f$4$1;-><init>(Lcom/xueqiu/android/community/f$4;Lcom/xueqiu/android/community/model/User;)V

    .line 287
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 298
    return v5
.end method
