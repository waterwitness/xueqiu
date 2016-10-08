.class final Lcom/xueqiu/android/community/a/d$1;
.super Ljava/lang/Object;
.source "FriendshipGroupAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/a/d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xueqiu/android/community/a/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/d;I)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/xueqiu/android/community/a/d$1;->b:Lcom/xueqiu/android/community/a/d;

    iput p2, p0, Lcom/xueqiu/android/community/a/d$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/xueqiu/android/community/a/d$1;->b:Lcom/xueqiu/android/community/a/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/d;->a(Lcom/xueqiu/android/community/a/d;)Lcom/xueqiu/android/community/a/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/xueqiu/android/community/a/d$1;->b:Lcom/xueqiu/android/community/a/d;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/d;->a(Lcom/xueqiu/android/community/a/d;)Lcom/xueqiu/android/community/a/e;

    move-result-object v0

    iget v1, p0, Lcom/xueqiu/android/community/a/d$1;->a:I

    invoke-interface {v0, v1}, Lcom/xueqiu/android/community/a/e;->a(I)V

    .line 70
    :cond_0
    return-void
.end method
