.class public final Lcom/pingan/b/c/a;
.super Ljava/lang/Object;
.source "Configuration.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Lcom/pingan/b/c/e;

.field public final g:Lcom/pingan/b/c/d;

.field public final h:Lcom/pingan/b/a/k;

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public n:Lcom/pingan/b/a/p;


# direct methods
.method private constructor <init>(Lcom/pingan/b/c/b;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1119
    iget-object v0, p1, Lcom/pingan/b/c/b;->a:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/pingan/b/c/a;->a:Ljava/lang/String;

    .line 2119
    iget-object v0, p1, Lcom/pingan/b/c/b;->b:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/pingan/b/c/a;->b:Ljava/lang/String;

    .line 3119
    iget-object v0, p1, Lcom/pingan/b/c/b;->c:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/pingan/b/c/a;->c:Ljava/lang/String;

    .line 4119
    iget-object v0, p1, Lcom/pingan/b/c/b;->d:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/pingan/b/c/a;->d:Ljava/lang/String;

    .line 5119
    iget-object v0, p1, Lcom/pingan/b/c/b;->n:Lcom/pingan/b/a/p;

    .line 5101
    if-eqz v0, :cond_1

    .line 5102
    const/16 v0, 0x50

    .line 80
    :goto_0
    iput v0, p0, Lcom/pingan/b/c/a;->e:I

    .line 7119
    iget v0, p1, Lcom/pingan/b/c/b;->i:I

    .line 82
    iput v0, p0, Lcom/pingan/b/c/a;->i:I

    .line 8119
    iget v0, p1, Lcom/pingan/b/c/b;->j:I

    .line 83
    iput v0, p0, Lcom/pingan/b/c/a;->j:I

    .line 9119
    iget v0, p1, Lcom/pingan/b/c/b;->k:I

    .line 85
    iput v0, p0, Lcom/pingan/b/c/a;->k:I

    .line 10119
    iget v0, p1, Lcom/pingan/b/c/b;->l:I

    .line 86
    iput v0, p0, Lcom/pingan/b/c/a;->l:I

    .line 11119
    iget-object v0, p1, Lcom/pingan/b/c/b;->f:Lcom/pingan/b/c/e;

    .line 88
    iput-object v0, p0, Lcom/pingan/b/c/a;->f:Lcom/pingan/b/c/e;

    .line 12119
    iget-object v0, p1, Lcom/pingan/b/c/b;->g:Lcom/pingan/b/c/d;

    .line 13108
    if-nez v0, :cond_0

    .line 13109
    new-instance v0, Lcom/pingan/b/c/a$1;

    invoke-direct {v0, p0}, Lcom/pingan/b/c/a$1;-><init>(Lcom/pingan/b/c/a;)V

    .line 89
    :cond_0
    iput-object v0, p0, Lcom/pingan/b/c/a;->g:Lcom/pingan/b/c/d;

    .line 13119
    iget v0, p1, Lcom/pingan/b/c/b;->m:I

    .line 91
    iput v0, p0, Lcom/pingan/b/c/a;->m:I

    .line 14119
    iget-object v0, p1, Lcom/pingan/b/c/b;->h:Lcom/pingan/b/a/k;

    .line 93
    iput-object v0, p0, Lcom/pingan/b/c/a;->h:Lcom/pingan/b/a/k;

    .line 15119
    iget-object v0, p1, Lcom/pingan/b/c/b;->n:Lcom/pingan/b/a/p;

    .line 95
    iput-object v0, p0, Lcom/pingan/b/c/a;->n:Lcom/pingan/b/a/p;

    .line 97
    return-void

    .line 6119
    :cond_1
    iget v0, p1, Lcom/pingan/b/c/b;->e:I

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/pingan/b/c/b;B)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/pingan/b/c/a;-><init>(Lcom/pingan/b/c/b;)V

    return-void
.end method
