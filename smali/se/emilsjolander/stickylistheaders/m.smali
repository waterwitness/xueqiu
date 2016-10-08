.class final Lse/emilsjolander/stickylistheaders/m;
.super Landroid/database/DataSetObserver;
.source "StickyListHeadersListView.java"


# instance fields
.field final synthetic a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;


# direct methods
.method private constructor <init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lse/emilsjolander/stickylistheaders/m;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;B)V
    .locals 0

    .prologue
    .line 489
    invoke-direct {p0, p1}, Lse/emilsjolander/stickylistheaders/m;-><init>(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/m;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->d(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)V

    .line 494
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lse/emilsjolander/stickylistheaders/m;->a:Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    invoke-static {v0}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->d(Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;)V

    .line 499
    return-void
.end method
