.class final Lcom/xueqiu/android/community/b$2$1;
.super Ljava/lang/Object;
.source "CommentReceiveFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/b$2;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/Comment;

.field final synthetic b:Lcom/xueqiu/android/community/b$2;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/b$2;Lcom/xueqiu/android/community/model/Comment;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/xueqiu/android/community/b$2$1;->b:Lcom/xueqiu/android/community/b$2;

    iput-object p2, p0, Lcom/xueqiu/android/community/b$2$1;->a:Lcom/xueqiu/android/community/model/Comment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/xueqiu/android/community/b$2$1;->b:Lcom/xueqiu/android/community/b$2;

    iget-object v0, v0, Lcom/xueqiu/android/community/b$2;->a:Lcom/xueqiu/android/community/b;

    iget-object v1, p0, Lcom/xueqiu/android/community/b$2$1;->a:Lcom/xueqiu/android/community/model/Comment;

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/b;->a(Lcom/xueqiu/android/community/b;Lcom/xueqiu/android/community/model/Comment;)V

    .line 113
    return-void
.end method
