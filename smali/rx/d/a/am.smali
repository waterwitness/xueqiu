.class public final Lrx/d/a/am;
.super Ljava/lang/Object;
.source "OperatorZip.java"

# interfaces
.implements Lrx/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/c",
        "<TR;[",
        "Lrx/a",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/c/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/l",
            "<+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/c/g;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1074
    new-instance v0, Lrx/c/m$1;

    invoke-direct {v0, p1}, Lrx/c/m$1;-><init>(Lrx/c/g;)V

    .line 72
    iput-object v0, p0, Lrx/d/a/am;->a:Lrx/c/l;

    .line 73
    return-void
.end method

.method public constructor <init>(Lrx/c/j;)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1140
    new-instance v0, Lrx/c/m$2;

    invoke-direct {v0, p1}, Lrx/c/m$2;-><init>(Lrx/c/j;)V

    .line 87
    iput-object v0, p0, Lrx/d/a/am;->a:Lrx/c/l;

    .line 88
    return-void
.end method

.method public constructor <init>(Lrx/c/k;)V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1162
    new-instance v0, Lrx/c/m$3;

    invoke-direct {v0, p1}, Lrx/c/m$3;-><init>(Lrx/c/k;)V

    .line 92
    iput-object v0, p0, Lrx/d/a/am;->a:Lrx/c/l;

    .line 93
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 58
    check-cast p1, Lrx/i;

    .line 2113
    new-instance v0, Lrx/d/a/an;

    iget-object v1, p0, Lrx/d/a/am;->a:Lrx/c/l;

    invoke-direct {v0, p1, v1}, Lrx/d/a/an;-><init>(Lrx/i;Lrx/c/l;)V

    .line 2114
    new-instance v1, Lrx/d/a/ap;

    invoke-direct {v1, v0}, Lrx/d/a/ap;-><init>(Lrx/d/a/an;)V

    .line 2115
    invoke-virtual {p1, v1}, Lrx/i;->a(Lrx/f;)V

    .line 2116
    new-instance v2, Lrx/d/a/aq;

    invoke-direct {v2, p0, p1, v0, v1}, Lrx/d/a/aq;-><init>(Lrx/d/a/am;Lrx/i;Lrx/d/a/an;Lrx/d/a/ap;)V

    .line 58
    return-object v2
.end method
