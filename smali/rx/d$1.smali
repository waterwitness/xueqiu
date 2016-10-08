.class final Lrx/d$1;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lrx/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d;-><init>(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 9048
    iput-object p1, p0, Lrx/d$1;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 9048
    check-cast p1, Lrx/i;

    .line 10058
    iget-object v0, p0, Lrx/d$1;->a:Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Throwable;)V

    .line 9048
    return-void
.end method
