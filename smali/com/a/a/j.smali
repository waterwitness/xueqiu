.class public final Lcom/a/a/j;
.super Ljava/lang/Object;
.source "PDFView.java"


# instance fields
.field public a:Z

.field public b:Lcom/a/a/b/b;

.field public c:I

.field public d:Z

.field final synthetic e:Lcom/a/a/i;

.field private final f:Landroid/net/Uri;

.field private g:[I

.field private h:Lcom/a/a/b/a;

.field private i:Lcom/a/a/b/c;

.field private j:Z


# direct methods
.method private constructor <init>(Lcom/a/a/i;Landroid/net/Uri;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1088
    iput-object p1, p0, Lcom/a/a/j;->e:Lcom/a/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1072
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/j;->g:[I

    .line 1074
    iput-boolean v2, p0, Lcom/a/a/j;->a:Z

    .line 1082
    iput v2, p0, Lcom/a/a/j;->c:I

    .line 1084
    iput-boolean v1, p0, Lcom/a/a/j;->d:Z

    .line 1086
    iput-boolean v1, p0, Lcom/a/a/j;->j:Z

    .line 1089
    iput-object p2, p0, Lcom/a/a/j;->f:Landroid/net/Uri;

    .line 1090
    return-void
.end method

.method public synthetic constructor <init>(Lcom/a/a/i;Landroid/net/Uri;B)V
    .locals 0

    .prologue
    .line 1068
    invoke-direct {p0, p1, p2}, Lcom/a/a/j;-><init>(Lcom/a/a/i;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/a/a/j;->e:Lcom/a/a/i;

    invoke-virtual {v0}, Lcom/a/a/i;->a()V

    .line 1129
    iget-object v0, p0, Lcom/a/a/j;->e:Lcom/a/a/i;

    iget-object v1, p0, Lcom/a/a/j;->h:Lcom/a/a/b/a;

    invoke-static {v0, v1}, Lcom/a/a/i;->a(Lcom/a/a/i;Lcom/a/a/b/a;)V

    .line 1130
    iget-object v0, p0, Lcom/a/a/j;->e:Lcom/a/a/i;

    iget-object v1, p0, Lcom/a/a/j;->i:Lcom/a/a/b/c;

    invoke-static {v0, v1}, Lcom/a/a/i;->a(Lcom/a/a/i;Lcom/a/a/b/c;)V

    .line 1131
    iget-object v0, p0, Lcom/a/a/j;->e:Lcom/a/a/i;

    iget-boolean v1, p0, Lcom/a/a/j;->a:Z

    .line 1345
    iget-object v0, v0, Lcom/a/a/i;->c:Lcom/a/a/h;

    .line 2124
    iput-boolean v1, v0, Lcom/a/a/h;->a:Z

    .line 1132
    iget-object v0, p0, Lcom/a/a/j;->e:Lcom/a/a/i;

    iget v1, p0, Lcom/a/a/j;->c:I

    invoke-static {v0, v1}, Lcom/a/a/i;->a(Lcom/a/a/i;I)V

    .line 1133
    iget-object v0, p0, Lcom/a/a/j;->e:Lcom/a/a/i;

    iget-boolean v1, p0, Lcom/a/a/j;->d:Z

    invoke-static {v0, v1}, Lcom/a/a/i;->a(Lcom/a/a/i;Z)V

    .line 1134
    iget-object v0, p0, Lcom/a/a/j;->e:Lcom/a/a/i;

    iget-boolean v1, p0, Lcom/a/a/j;->j:Z

    invoke-virtual {v0, v1}, Lcom/a/a/i;->setSwipeVertical(Z)V

    .line 1135
    iget-object v0, p0, Lcom/a/a/j;->e:Lcom/a/a/i;

    invoke-static {v0}, Lcom/a/a/i;->c(Lcom/a/a/i;)Lcom/a/a/h;

    move-result-object v0

    iget-boolean v1, p0, Lcom/a/a/j;->j:Z

    .line 2135
    iput-boolean v1, v0, Lcom/a/a/h;->b:Z

    .line 1136
    iget-object v0, p0, Lcom/a/a/j;->g:[I

    if-eqz v0, :cond_0

    .line 1137
    iget-object v0, p0, Lcom/a/a/j;->e:Lcom/a/a/i;

    iget-object v1, p0, Lcom/a/a/j;->f:Landroid/net/Uri;

    iget-object v2, p0, Lcom/a/a/j;->b:Lcom/a/a/b/b;

    iget-object v3, p0, Lcom/a/a/j;->g:[I

    invoke-static {v0, v1, v2, v3}, Lcom/a/a/i;->a(Lcom/a/a/i;Landroid/net/Uri;Lcom/a/a/b/b;[I)V

    .line 1141
    :goto_0
    return-void

    .line 1139
    :cond_0
    iget-object v0, p0, Lcom/a/a/j;->e:Lcom/a/a/i;

    iget-object v1, p0, Lcom/a/a/j;->f:Landroid/net/Uri;

    iget-object v2, p0, Lcom/a/a/j;->b:Lcom/a/a/b/b;

    invoke-static {v0, v1, v2}, Lcom/a/a/i;->a(Lcom/a/a/i;Landroid/net/Uri;Lcom/a/a/b/b;)V

    goto :goto_0
.end method
