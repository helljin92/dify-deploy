FROM langgenius/dify-web:latest

# Copy environment config
ENV EDITION=SELF_HOSTED
ENV API_URL=https://vibrant-wonder-production.up.railway.app
ENV DB_HOST=db.qfvvbcjpihlgpbwglhpu.supabase.co
ENV DB_PORT=5432
ENV DB_USERNAME=postgres
ENV DB_PASSWORD=Thuphuong309309@
ENV DB_DATABASE=postgres

# Expose port for Railway
EXPOSE $PORT

# Start command
CMD ["sh", "-c", "nginx -g 'daemon off;' && node server.js"]
