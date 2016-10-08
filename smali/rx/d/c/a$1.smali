.class final Lrx/d/c/a$1;
.super Lrx/d/c/d;
.source "IndexedRingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/d/c/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/d/c/d",
        "<",
        "Lrx/d/c/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lrx/d/c/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1055
    new-instance v0, Lrx/d/c/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/d/c/a;-><init>(B)V

    .line 51
    return-object v0
.end method
