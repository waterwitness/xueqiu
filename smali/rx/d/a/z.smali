.class public final Lrx/d/a/z;
.super Ljava/lang/Object;
.source "OperatorSingle.java"

# interfaces
.implements Lrx/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/c",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final a:Z

.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrx/d/a/z;-><init>(B)V

    .line 35
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/d/a/z;->a:Z

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/d/a/z;->b:Ljava/lang/Object;

    .line 44
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    check-cast p1, Lrx/i;

    .line 1048
    new-instance v0, Lrx/d/a/z$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/d/a/z$1;-><init>(Lrx/d/a/z;Lrx/i;Lrx/i;)V

    .line 28
    return-object v0
.end method
