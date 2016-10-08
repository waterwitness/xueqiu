.class public final Lcom/pingan/b/c/b;
.super Ljava/lang/Object;
.source "Configuration.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:I

.field f:Lcom/pingan/b/c/e;

.field g:Lcom/pingan/b/c/d;

.field h:Lcom/pingan/b/a/k;

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I

.field n:Lcom/pingan/b/a/p;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object v1, p0, Lcom/pingan/b/c/b;->f:Lcom/pingan/b/c/e;

    .line 127
    iput-object v1, p0, Lcom/pingan/b/c/b;->g:Lcom/pingan/b/c/d;

    .line 128
    iput-object v1, p0, Lcom/pingan/b/c/b;->h:Lcom/pingan/b/a/k;

    .line 130
    const/high16 v0, 0x40000

    iput v0, p0, Lcom/pingan/b/c/b;->i:I

    .line 131
    const/high16 v0, 0x80000

    iput v0, p0, Lcom/pingan/b/c/b;->j:I

    .line 132
    const/16 v0, 0xa

    iput v0, p0, Lcom/pingan/b/c/b;->k:I

    .line 133
    const/16 v0, 0x3c

    iput v0, p0, Lcom/pingan/b/c/b;->l:I

    .line 134
    const/4 v0, 0x5

    iput v0, p0, Lcom/pingan/b/c/b;->m:I

    .line 135
    iput-object v1, p0, Lcom/pingan/b/c/b;->n:Lcom/pingan/b/a/p;

    .line 138
    sget-object v0, Lcom/pingan/b/c/m;->a:Lcom/pingan/b/c/m;

    iget-object v0, v0, Lcom/pingan/b/c/m;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/pingan/b/c/b;->a:Ljava/lang/String;

    .line 139
    sget-object v0, Lcom/pingan/b/c/m;->a:Lcom/pingan/b/c/m;

    iget-object v0, v0, Lcom/pingan/b/c/m;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/pingan/b/c/b;->b:Ljava/lang/String;

    .line 140
    sget-object v0, Lcom/pingan/b/c/m;->a:Lcom/pingan/b/c/m;

    iget-object v0, v0, Lcom/pingan/b/c/m;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/pingan/b/c/b;->c:Ljava/lang/String;

    .line 141
    sget-object v0, Lcom/pingan/b/c/m;->a:Lcom/pingan/b/c/m;

    iget-object v0, v0, Lcom/pingan/b/c/m;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/pingan/b/c/b;->d:Ljava/lang/String;

    .line 142
    const/16 v0, 0x50

    iput v0, p0, Lcom/pingan/b/c/b;->e:I

    .line 143
    return-void
.end method


# virtual methods
.method public final a()Lcom/pingan/b/c/a;
    .locals 2

    .prologue
    .line 205
    new-instance v0, Lcom/pingan/b/c/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pingan/b/c/a;-><init>(Lcom/pingan/b/c/b;B)V

    return-object v0
.end method

.method public final a(Lcom/pingan/b/c/e;)Lcom/pingan/b/c/b;
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/pingan/b/c/b;->f:Lcom/pingan/b/c/e;

    .line 154
    return-object p0
.end method
