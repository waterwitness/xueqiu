.class final Lrx/i/h;
.super Ljava/lang/Object;
.source "ReplaySubject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lrx/i/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i/i",
            "<TT;>;"
        }
    .end annotation
.end field

.field b:Lrx/i/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i/i",
            "<TT;>;"
        }
    .end annotation
.end field

.field c:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 884
    new-instance v0, Lrx/i/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/i/i;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/i/h;->a:Lrx/i/i;

    .line 886
    iget-object v0, p0, Lrx/i/h;->a:Lrx/i/i;

    iput-object v0, p0, Lrx/i/h;->b:Lrx/i/i;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 891
    iget-object v0, p0, Lrx/i/h;->b:Lrx/i/i;

    .line 892
    new-instance v1, Lrx/i/i;

    invoke-direct {v1, p1}, Lrx/i/i;-><init>(Ljava/lang/Object;)V

    .line 893
    iput-object v1, v0, Lrx/i/i;->b:Lrx/i/i;

    .line 894
    iput-object v1, p0, Lrx/i/h;->b:Lrx/i/i;

    .line 895
    iget v0, p0, Lrx/i/h;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/i/h;->c:I

    .line 896
    return-void
.end method
