.class final Lcom/xueqiu/android/community/a/w$1;
.super Lcom/xueqiu/android/base/util/o;
.source "QuestionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/a/w;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic b:Lcom/xueqiu/android/community/model/Comment;

.field final synthetic c:Lcom/xueqiu/android/community/a/w;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/w;Lcom/xueqiu/android/community/model/Comment;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/xueqiu/android/community/a/w$1;->c:Lcom/xueqiu/android/community/a/w;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/w$1;->b:Lcom/xueqiu/android/community/model/Comment;

    invoke-direct {p0}, Lcom/xueqiu/android/base/util/o;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/xueqiu/android/community/a/w$1;->b:Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Comment;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getGender()Lcom/xueqiu/android/community/model/User$Gender;

    move-result-object v0

    sget-object v1, Lcom/xueqiu/android/community/model/User$Gender;->FEMALE:Lcom/xueqiu/android/community/model/User$Gender;

    if-ne v0, v1, :cond_0

    .line 95
    check-cast p2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xueqiu/android/community/a/w$1;->c:Lcom/xueqiu/android/community/a/w;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/w;->a(Lcom/xueqiu/android/community/a/w;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    check-cast p2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xueqiu/android/community/a/w$1;->c:Lcom/xueqiu/android/community/a/w;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/w;->b(Lcom/xueqiu/android/community/a/w;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
