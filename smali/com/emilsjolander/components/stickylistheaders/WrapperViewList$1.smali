.class Lcom/emilsjolander/components/stickylistheaders/WrapperViewList$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WrapperViewList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;


# direct methods
.method constructor <init>(Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    # getter for: Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mIsIndexScrollEnabled:Z
    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->access$000(Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    # getter for: Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mScroller:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;
    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->access$100(Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;)Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;

    # getter for: Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->mScroller:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;
    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;->access$100(Lcom/emilsjolander/components/stickylistheaders/WrapperViewList;)Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->show()V

    .line 81
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method
