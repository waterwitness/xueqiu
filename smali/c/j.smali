.class public abstract Lc/j;
.super Ljava/lang/Object;
.source "ForwardingSource.java"

# interfaces
.implements Lc/s;


# instance fields
.field private final delegate:Lc/s;


# direct methods
.method public constructor <init>(Lc/s;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    iput-object p1, p0, Lc/j;->delegate:Lc/s;

    .line 27
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lc/j;->delegate:Lc/s;

    invoke-interface {v0}, Lc/s;->close()V

    .line 44
    return-void
.end method

.method public final delegate()Lc/s;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lc/j;->delegate:Lc/s;

    return-object v0
.end method

.method public read(Lc/d;J)J
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lc/j;->delegate:Lc/s;

    invoke-interface {v0, p1, p2, p3}, Lc/s;->read(Lc/d;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public timeout()Lc/t;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lc/j;->delegate:Lc/s;

    invoke-interface {v0}, Lc/s;->timeout()Lc/t;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc/j;->delegate:Lc/s;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
