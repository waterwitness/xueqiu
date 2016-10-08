.class final Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$2;
.super Ljava/lang/Object;
.source "StickyListHeadersListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setOnHeaderClickListener(Lse/emilsjolander/stickylistheaders/o;)V
.end annotation


# instance fields
.field final synthetic a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;


# direct methods
.method constructor <init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)V
    .locals 0

    .prologue
    .line 639
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$2;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$2;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    .line 644
    invoke-static {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->b(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView$2;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->c(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 645
    return-void
.end method
