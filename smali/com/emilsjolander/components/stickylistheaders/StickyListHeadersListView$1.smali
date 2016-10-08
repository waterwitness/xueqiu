.class Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$1;
.super Ljava/lang/Object;
.source "StickyListHeadersListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->swapHeader(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;


# direct methods
.method constructor <init>(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 329
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    # getter for: Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mOnHeaderClickListener:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;
    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->access$200(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    # getter for: Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mOnHeaderClickListener:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;
    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->access$200(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    # getter for: Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeader:Landroid/view/View;
    invoke-static {v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->access$300(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    # getter for: Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;
    invoke-static {v3}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->access$400(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    .line 331
    # getter for: Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->mHeaderId:Ljava/lang/Long;
    invoke-static {v4}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->access$500(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x1

    .line 330
    invoke-interface/range {v0 .. v6}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView$OnHeaderClickListener;->onHeaderClick(Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;Landroid/view/View;IJZ)V

    .line 333
    :cond_0
    return-void
.end method
