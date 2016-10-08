.class public Lcom/xueqiu/android/community/model/Comment$PreparedShowObj;
.super Ljava/lang/Object;
.source "Comment.java"


# instance fields
.field public createdAtFormated:Ljava/lang/String;

.field public replyCommentTextFromHtml:Landroid/text/Spanned;

.field public textFromHtml:Landroid/text/Spanned;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object v0, p0, Lcom/xueqiu/android/community/model/Comment$PreparedShowObj;->textFromHtml:Landroid/text/Spanned;

    .line 182
    iput-object v0, p0, Lcom/xueqiu/android/community/model/Comment$PreparedShowObj;->createdAtFormated:Ljava/lang/String;

    .line 183
    iput-object v0, p0, Lcom/xueqiu/android/community/model/Comment$PreparedShowObj;->replyCommentTextFromHtml:Landroid/text/Spanned;

    return-void
.end method
