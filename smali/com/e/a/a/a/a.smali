.class public abstract Lcom/e/a/a/a/a;
.super Ljava/lang/Object;
.source "AbstractContentBody.java"

# interfaces
.implements Lcom/e/a/a/a/c;


# instance fields
.field public final a:Lcom/e/a/a;


# direct methods
.method public constructor <init>(Lcom/e/a/a;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "Content type"

    invoke-static {p1, v0}, Lcom/e/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    iput-object p1, p0, Lcom/e/a/a/a/a;->a:Lcom/e/a/a;

    .line 30
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/e/a/a/a/a;->a:Lcom/e/a/a;

    .line 1089
    iget-object v0, v0, Lcom/e/a/a;->o:Ljava/lang/String;

    .line 48
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/e/a/a/a/a;->a:Lcom/e/a/a;

    .line 1093
    iget-object v0, v0, Lcom/e/a/a;->p:Ljava/nio/charset/Charset;

    .line 73
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
