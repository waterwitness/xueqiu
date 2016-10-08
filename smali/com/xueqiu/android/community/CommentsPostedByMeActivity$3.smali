.class final Lcom/xueqiu/android/community/CommentsPostedByMeActivity$3;
.super Ljava/lang/Object;
.source "CommentsPostedByMeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/CommentsPostedByMeActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/Comment;

.field final synthetic b:Lcom/xueqiu/android/community/CommentsPostedByMeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/CommentsPostedByMeActivity;Lcom/xueqiu/android/community/model/Comment;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/xueqiu/android/community/CommentsPostedByMeActivity$3;->b:Lcom/xueqiu/android/community/CommentsPostedByMeActivity;

    iput-object p2, p0, Lcom/xueqiu/android/community/CommentsPostedByMeActivity$3;->a:Lcom/xueqiu/android/community/model/Comment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 135
    invoke-static {}, Lcom/xueqiu/android/community/CommentsPostedByMeActivity;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/CommentsPostedByMeActivity$3;->a:Lcom/xueqiu/android/community/model/Comment;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Comment;->getId()J

    move-result-wide v2

    new-instance v1, Lcom/xueqiu/android/community/CommentsPostedByMeActivity$3$1;

    iget-object v4, p0, Lcom/xueqiu/android/community/CommentsPostedByMeActivity$3;->b:Lcom/xueqiu/android/community/CommentsPostedByMeActivity;

    invoke-direct {v1, p0, v4}, Lcom/xueqiu/android/community/CommentsPostedByMeActivity$3$1;-><init>(Lcom/xueqiu/android/community/CommentsPostedByMeActivity$3;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/b/ai;->d(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 155
    iget-object v0, p0, Lcom/xueqiu/android/community/CommentsPostedByMeActivity$3;->b:Lcom/xueqiu/android/community/CommentsPostedByMeActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/CommentsPostedByMeActivity;->h()Landroid/app/Dialog;

    .line 156
    return-void
.end method
