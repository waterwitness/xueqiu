.class Lcom/emilsjolander/components/stickylistheaders/IndexScroller$1;
.super Landroid/os/Handler;
.source "IndexScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/emilsjolander/components/stickylistheaders/IndexScroller;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;


# direct methods
.method constructor <init>(Lcom/emilsjolander/components/stickylistheaders/IndexScroller;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0xa

    const/high16 v8, 0x3f800000    # 1.0f

    const-wide v6, 0x3fc999999999999aL    # 0.2

    .line 227
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 229
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

    # getter for: Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mState:I
    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->access$000(Lcom/emilsjolander/components/stickylistheaders/IndexScroller;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 257
    :goto_0
    return-void

    .line 232
    :pswitch_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

    # getter for: Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mAlphaRate:F
    invoke-static {v1}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->access$100(Lcom/emilsjolander/components/stickylistheaders/IndexScroller;)F

    move-result v1

    float-to-double v2, v1

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

    # getter for: Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mAlphaRate:F
    invoke-static {v1}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->access$100(Lcom/emilsjolander/components/stickylistheaders/IndexScroller;)F

    move-result v1

    sub-float v1, v8, v1

    float-to-double v4, v1

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v1, v2

    # setter for: Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mAlphaRate:F
    invoke-static {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->access$102(Lcom/emilsjolander/components/stickylistheaders/IndexScroller;F)F

    .line 233
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

    # getter for: Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mAlphaRate:F
    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->access$100(Lcom/emilsjolander/components/stickylistheaders/IndexScroller;)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

    # setter for: Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mAlphaRate:F
    invoke-static {v0, v8}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->access$102(Lcom/emilsjolander/components/stickylistheaders/IndexScroller;F)F

    .line 235
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

    const/4 v1, 0x2

    # invokes: Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->setState(I)V
    invoke-static {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->access$200(Lcom/emilsjolander/components/stickylistheaders/IndexScroller;I)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

    # getter for: Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->access$300(Lcom/emilsjolander/components/stickylistheaders/IndexScroller;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 239
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

    # invokes: Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->fade(J)V
    invoke-static {v0, v10, v11}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->access$400(Lcom/emilsjolander/components/stickylistheaders/IndexScroller;J)V

    goto :goto_0

    .line 243
    :pswitch_1
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

    const/4 v1, 0x3

    # invokes: Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->setState(I)V
    invoke-static {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->access$200(Lcom/emilsjolander/components/stickylistheaders/IndexScroller;I)V

    goto :goto_0

    .line 247
    :pswitch_2
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

    # getter for: Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mAlphaRate:F
    invoke-static {v1}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->access$100(Lcom/emilsjolander/components/stickylistheaders/IndexScroller;)F

    move-result v1

    float-to-double v2, v1

    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

    # getter for: Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mAlphaRate:F
    invoke-static {v1}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->access$100(Lcom/emilsjolander/components/stickylistheaders/IndexScroller;)F

    move-result v1

    float-to-double v4, v1

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v1, v2

    # setter for: Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mAlphaRate:F
    invoke-static {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->access$102(Lcom/emilsjolander/components/stickylistheaders/IndexScroller;F)F

    .line 248
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

    # getter for: Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mAlphaRate:F
    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->access$100(Lcom/emilsjolander/components/stickylistheaders/IndexScroller;)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

    const/4 v1, 0x0

    # setter for: Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mAlphaRate:F
    invoke-static {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->access$102(Lcom/emilsjolander/components/stickylistheaders/IndexScroller;F)F

    .line 250
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

    const/4 v1, 0x0

    # invokes: Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->setState(I)V
    invoke-static {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->access$200(Lcom/emilsjolander/components/stickylistheaders/IndexScroller;I)V

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

    # getter for: Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->access$300(Lcom/emilsjolander/components/stickylistheaders/IndexScroller;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 254
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/IndexScroller$1;->this$0:Lcom/emilsjolander/components/stickylistheaders/IndexScroller;

    # invokes: Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->fade(J)V
    invoke-static {v0, v10, v11}, Lcom/emilsjolander/components/stickylistheaders/IndexScroller;->access$400(Lcom/emilsjolander/components/stickylistheaders/IndexScroller;J)V

    goto/16 :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
