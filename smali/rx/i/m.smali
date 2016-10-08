.class final Lrx/i/m;
.super Ljava/lang/Object;
.source "SubjectSubscriptionManager.java"

# interfaces
.implements Lrx/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/b",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lrx/i/m;",
            "Lrx/i/n;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lrx/i/m;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile a:Lrx/i/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/i/n",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile c:Ljava/lang/Object;

.field e:Z

.field f:Lrx/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/b",
            "<",
            "Lrx/i/o",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field g:Lrx/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/b",
            "<",
            "Lrx/i/o",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field h:Lrx/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/b",
            "<",
            "Lrx/i/o",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field public final i:Lrx/d/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/d/a/a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const-class v0, Lrx/i/m;

    const-class v1, Lrx/i/n;

    const-string v2, "a"

    .line 40
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/i/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 43
    const-class v0, Lrx/i/m;

    const-class v1, Ljava/lang/Object;

    const-string v2, "c"

    .line 44
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/i/m;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 43
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lrx/i/n;->e:Lrx/i/n;

    iput-object v0, p0, Lrx/i/m;->a:Lrx/i/n;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/i/m;->e:Z

    .line 48
    invoke-static {}, Lrx/c/c;->a()Lrx/c/d;

    move-result-object v0

    iput-object v0, p0, Lrx/i/m;->f:Lrx/c/b;

    .line 50
    invoke-static {}, Lrx/c/c;->a()Lrx/c/d;

    move-result-object v0

    iput-object v0, p0, Lrx/i/m;->g:Lrx/c/b;

    .line 52
    invoke-static {}, Lrx/c/c;->a()Lrx/c/d;

    move-result-object v0

    iput-object v0, p0, Lrx/i/m;->h:Lrx/c/b;

    .line 54
    invoke-static {}, Lrx/d/a/a;->a()Lrx/d/a/a;

    move-result-object v0

    iput-object v0, p0, Lrx/i/m;->i:Lrx/d/a/a;

    .line 205
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 35
    check-cast p1, Lrx/i;

    .line 3057
    new-instance v1, Lrx/i/o;

    invoke-direct {v1, p1}, Lrx/i/o;-><init>(Lrx/e;)V

    .line 3068
    new-instance v2, Lrx/i/m$1;

    invoke-direct {v2, p0, v1}, Lrx/i/m$1;-><init>(Lrx/i/m;Lrx/i/o;)V

    invoke-static {v2}, Lrx/j/g;->a(Lrx/c/a;)Lrx/j;

    move-result-object v2

    invoke-virtual {p1, v2}, Lrx/i;->a(Lrx/j;)V

    .line 3059
    iget-object v2, p0, Lrx/i/m;->f:Lrx/c/b;

    invoke-interface {v2, v1}, Lrx/c/b;->a(Ljava/lang/Object;)V

    .line 3076
    iget-object v2, p1, Lrx/i;->e:Lrx/d/c/j;

    invoke-virtual {v2}, Lrx/d/c/j;->c()Z

    move-result v2

    .line 3060
    if-nez v2, :cond_1

    .line 3094
    :cond_0
    iget-object v2, p0, Lrx/i/m;->a:Lrx/i/n;

    .line 3095
    iget-boolean v3, v2, Lrx/i/n;->a:Z

    if-eqz v3, :cond_2

    .line 3096
    iget-object v2, p0, Lrx/i/m;->h:Lrx/c/b;

    invoke-interface {v2, v1}, Lrx/c/b;->a(Ljava/lang/Object;)V

    .line 3061
    :goto_0
    if-eqz v0, :cond_1

    .line 4076
    iget-object v0, p1, Lrx/i;->e:Lrx/d/c/j;

    invoke-virtual {v0}, Lrx/d/c/j;->c()Z

    move-result v0

    .line 3061
    if-eqz v0, :cond_1

    .line 3062
    invoke-virtual {p0, v1}, Lrx/i/m;->a(Lrx/i/o;)V

    .line 35
    :cond_1
    return-void

    .line 3161
    :cond_2
    iget-object v3, v2, Lrx/i/n;->b:[Lrx/i/o;

    .line 3162
    array-length v3, v3

    .line 3163
    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [Lrx/i/o;

    .line 3164
    iget-object v5, v2, Lrx/i/n;->b:[Lrx/i/o;

    invoke-static {v5, v0, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3165
    aput-object v1, v4, v3

    .line 3166
    new-instance v3, Lrx/i/n;

    iget-boolean v5, v2, Lrx/i/n;->a:Z

    invoke-direct {v3, v5, v4}, Lrx/i/n;-><init>(Z[Lrx/i/o;)V

    .line 3100
    sget-object v4, Lrx/i/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3101
    iget-object v0, p0, Lrx/i/m;->g:Lrx/c/b;

    invoke-interface {v0, v1}, Lrx/c/b;->a(Ljava/lang/Object;)V

    .line 3102
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final a(Lrx/i/o;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i/o",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 112
    :cond_0
    iget-object v3, p0, Lrx/i/m;->a:Lrx/i/n;

    .line 113
    iget-boolean v0, v3, Lrx/i/n;->a:Z

    if-eqz v0, :cond_2

    .line 118
    :cond_1
    :goto_0
    return-void

    .line 1169
    :cond_2
    iget-object v6, v3, Lrx/i/n;->b:[Lrx/i/o;

    .line 1170
    array-length v7, v6

    .line 1171
    const/4 v0, 0x1

    if-ne v7, v0, :cond_3

    aget-object v0, v6, v5

    if-ne v0, p1, :cond_3

    .line 1172
    sget-object v0, Lrx/i/n;->e:Lrx/i/n;

    .line 117
    :goto_1
    if-eq v0, v3, :cond_1

    sget-object v1, Lrx/i/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1174
    :cond_3
    if-nez v7, :cond_4

    move-object v0, v3

    .line 1175
    goto :goto_1

    .line 1177
    :cond_4
    add-int/lit8 v0, v7, -0x1

    new-array v2, v0, [Lrx/i/o;

    move v4, v5

    move v1, v5

    .line 1179
    :goto_2
    if-ge v4, v7, :cond_6

    .line 1180
    aget-object v8, v6, v4

    .line 1181
    if-eq v8, p1, :cond_9

    .line 1182
    add-int/lit8 v0, v7, -0x1

    if-ne v1, v0, :cond_5

    move-object v0, v3

    .line 1183
    goto :goto_1

    .line 1185
    :cond_5
    add-int/lit8 v0, v1, 0x1

    aput-object v8, v2, v1

    .line 1179
    :goto_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_2

    .line 1188
    :cond_6
    if-nez v1, :cond_7

    .line 1189
    sget-object v0, Lrx/i/n;->e:Lrx/i/n;

    goto :goto_1

    .line 1191
    :cond_7
    add-int/lit8 v0, v7, -0x1

    if-ge v1, v0, :cond_8

    .line 1192
    new-array v0, v1, [Lrx/i/o;

    .line 1193
    invoke-static {v2, v5, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1196
    :goto_4
    new-instance v1, Lrx/i/n;

    iget-boolean v2, v3, Lrx/i/n;->a:Z

    invoke-direct {v1, v2, v0}, Lrx/i/n;-><init>(Z[Lrx/i/o;)V

    move-object v0, v1

    goto :goto_1

    :cond_8
    move-object v0, v2

    goto :goto_4

    :cond_9
    move v0, v1

    goto :goto_3
.end method

.method final b(Ljava/lang/Object;)[Lrx/i/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Lrx/i/o",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 138
    .line 2077
    iput-object p1, p0, Lrx/i/m;->c:Ljava/lang/Object;

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/i/m;->e:Z

    .line 141
    iget-object v0, p0, Lrx/i/m;->a:Lrx/i/n;

    .line 142
    iget-boolean v0, v0, Lrx/i/n;->a:Z

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lrx/i/n;->c:[Lrx/i/o;

    .line 145
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lrx/i/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, Lrx/i/n;->d:Lrx/i/n;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/i/n;

    iget-object v0, v0, Lrx/i/n;->b:[Lrx/i/o;

    goto :goto_0
.end method
