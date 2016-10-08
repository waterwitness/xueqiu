.class public final Lrx/c/m$1;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lrx/c/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c/m;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/l",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/c/g;


# direct methods
.method public constructor <init>(Lrx/c/g;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lrx/c/m$1;->a:Lrx/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 79
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Func2 expecting 2 arguments."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    iget-object v0, p0, Lrx/c/m$1;->a:Lrx/c/g;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-interface {v0, v1, v2}, Lrx/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
