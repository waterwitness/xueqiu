.class public final Lcom/xiaomi/e/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/xiaomi/e/g;

.field private b:Lcom/xiaomi/e/b/a;


# direct methods
.method public constructor <init>(Lcom/xiaomi/e/g;Lcom/xiaomi/e/b/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/e/b;->a:Lcom/xiaomi/e/g;

    iput-object p2, p0, Lcom/xiaomi/e/b;->b:Lcom/xiaomi/e/b/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/e/c/e;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/e/b;->a:Lcom/xiaomi/e/g;

    invoke-interface {v0, p1}, Lcom/xiaomi/e/g;->a(Lcom/xiaomi/e/c/e;)V

    return-void
.end method
