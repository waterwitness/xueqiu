.class final Lcom/d/a/b/m;
.super Ljava/lang/Object;
.source "ImageLoadingInfo.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Lcom/d/a/b/e/a;

.field final d:Lcom/d/a/b/a/f;

.field final e:Lcom/d/a/b/d;

.field final f:Lcom/d/a/b/f/a;

.field final g:Lcom/d/a/b/f/b;

.field final h:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/d/a/b/e/a;Lcom/d/a/b/a/f;Ljava/lang/String;Lcom/d/a/b/d;Lcom/d/a/b/f/a;Ljava/util/concurrent/locks/ReentrantLock;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/d/a/b/m;->a:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/d/a/b/m;->c:Lcom/d/a/b/e/a;

    .line 51
    iput-object p3, p0, Lcom/d/a/b/m;->d:Lcom/d/a/b/a/f;

    .line 52
    iput-object p5, p0, Lcom/d/a/b/m;->e:Lcom/d/a/b/d;

    .line 53
    iput-object p6, p0, Lcom/d/a/b/m;->f:Lcom/d/a/b/f/a;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/d/a/b/m;->g:Lcom/d/a/b/f/b;

    .line 55
    iput-object p7, p0, Lcom/d/a/b/m;->h:Ljava/util/concurrent/locks/ReentrantLock;

    .line 56
    iput-object p4, p0, Lcom/d/a/b/m;->b:Ljava/lang/String;

    .line 57
    return-void
.end method
