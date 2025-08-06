# ShimanskiiAdminPro

Una aplicación de escritorio moderna para la gestión completa de edificios residenciales y complejos, desarrollada con Electron, React y SQLite.

## 🚀 Características

### Funcionalidades Principales
- **Gestión de Edificios**: Crear y administrar múltiples edificios y complejos residenciales
- **Copropietarios**: Gestionar copropietarios, apartamentos y espacios de estacionamiento
- **Expensas**: Control completo de expensas con generación de recibos
- **Quejas y Solicitudes**: Sistema de tickets para quejas y solicitudes
- **Reservas**: Reserva de espacios comunes (piscina, parrilla, gimnasio, etc.)
- **Documentos**: Almacenamiento y gestión de documentos del edificio
- **Reportes**: Generación de reportes y estadísticas

### Características Técnicas
- **100% Local**: No requiere conexión a internet
- **Base de Datos SQLite**: Almacenamiento local seguro
- **Interfaz Moderna**: Diseño tipo Adobe con Tailwind CSS
- **Multilingüe**: Soporte completo para español e inglés
- **Responsive**: Interfaz adaptativa para diferentes tamaños de pantalla
- **Exportación**: Backup de base de datos y exportación de reportes

## 🛠️ Tecnologías Utilizadas

- **Frontend**: React 18, Tailwind CSS, Lucide React
- **Backend**: Electron, Node.js
- **Base de Datos**: SQLite
- **Internacionalización**: react-i18next
- **Formularios**: react-hook-form
- **Notificaciones**: react-hot-toast

## 📦 Instalación

### Prerrequisitos
- Node.js 16 o superior
- npm o yarn

### Pasos de Instalación

1. **Clonar el repositorio**
```bash
git clone <repository-url>
cd shimanskii-admin-pro
```

2. **Instalar dependencias**
```bash
npm install
```

3. **Ejecutar en modo desarrollo**
```bash
npm run electron-dev
```

4. **Construir para producción**
```bash
npm run electron-pack
```

## 🎯 Uso

### Primeros Pasos

1. **Registro de Administrador**
   - Ejecuta la aplicación
   - Haz clic en "Registrarse"
   - Selecciona "Administrador"
   - Completa el formulario de registro

2. **Crear un Edificio**
   - Inicia sesión como administrador
   - Ve a "Edificios" en el menú lateral
   - Haz clic en "Agregar Edificio"
   - Completa la información del edificio

3. **Agregar Copropietarios**
   - Ve a "Copropietarios" en el menú lateral
   - Haz clic en "Agregar Copropietario"
   - Completa la información del copropietario

### Roles de Usuario

#### Administrador
- Gestión completa de edificios
- Administración de copropietarios
- Control de expensas y quejas
- Generación de reportes
- Configuración del sistema

#### Copropietario
- Ver sus expensas y pagos
- Crear quejas y solicitudes
- Reservar espacios comunes
- Descargar documentos
- Ver información del edificio

## 🏗️ Estructura del Proyecto

```
shimanskii-admin-pro/
├── public/
│   ├── electron.js          # Proceso principal de Electron
│   ├── preload.js           # Script de precarga
│   └── index.html           # HTML principal
├── src/
│   ├── components/          # Componentes React
│   │   ├── auth/           # Componentes de autenticación
│   │   ├── dashboard/      # Componentes del dashboard
│   │   ├── buildings/      # Gestión de edificios
│   │   ├── coOwners/       # Gestión de copropietarios
│   │   ├── expenses/       # Gestión de expensas
│   │   ├── complaints/     # Gestión de quejas
│   │   ├── reservations/   # Gestión de reservas
│   │   └── common/         # Componentes comunes
│   ├── contexts/           # Contextos de React
│   ├── i18n.js            # Configuración de internacionalización
│   ├── App.js             # Componente principal
│   └── index.js           # Punto de entrada
├── package.json
├── tailwind.config.js
└── README.md
```

## 🗄️ Base de Datos

La aplicación utiliza SQLite con las siguientes tablas principales:

- **users**: Usuarios del sistema (administradores y copropietarios)
- **buildings**: Edificios y complejos residenciales
- **co_owners**: Copropietarios asociados a edificios
- **expenses**: Expensas y pagos
- **complaints**: Quejas y solicitudes
- **reservations**: Reservas de espacios comunes
- **documents**: Documentos del edificio

## 🎨 Diseño

### Paleta de Colores
- **Primario**: Azul (#0ea5e9)
- **Secundario**: Gris (#64748b)
- **Éxito**: Verde (#22c55e)
- **Advertencia**: Amarillo (#f59e0b)
- **Error**: Rojo (#ef4444)

### Tipografías
- **Principal**: Roboto
- **Display**: Poppins

## 🔧 Configuración

### Variables de Entorno
```bash
# Desarrollo
ELECTRON_START_URL=http://localhost:3000

# Producción
NODE_ENV=production
```

### Scripts Disponibles
```bash
npm start              # Iniciar servidor de desarrollo React
npm run build          # Construir aplicación React
npm run electron       # Ejecutar Electron
npm run electron-dev   # Ejecutar en modo desarrollo
npm run electron-pack  # Construir aplicación para distribución
```

## 📱 Características de la Interfaz

### Diseño Responsive
- Adaptable a diferentes tamaños de pantalla
- Sidebar colapsible
- Navegación intuitiva

### Componentes Modernos
- Tarjetas con sombras suaves
- Botones con estados hover
- Modales elegantes
- Tablas con paginación
- Formularios con validación

### Animaciones
- Transiciones suaves
- Estados de carga
- Feedback visual

## 🔒 Seguridad

- **Autenticación**: Contraseñas hasheadas con bcrypt
- **Aislamiento**: Context isolation habilitado
- **Validación**: Validación de formularios en frontend y backend
- **Sanitización**: Entradas sanitizadas antes de guardar en BD

## 📊 Reportes y Exportación

### Tipos de Reportes
- Reporte de expensas por edificio
- Estado de pagos
- Quejas por período
- Estadísticas de ocupación
- Reporte de reservas

### Formatos de Exportación
- PDF (recibos y reportes)
- Excel (datos tabulares)
- CSV (datos crudos)

## 🚀 Despliegue

### Desarrollo
```bash
npm run electron-dev
```

### Producción
```bash
npm run electron-pack
```

Los ejecutables se generan en la carpeta `dist/` para:
- Windows (.exe)
- macOS (.dmg)
- Linux (.AppImage)

## 🤝 Contribución

1. Fork el proyecto
2. Crea una rama para tu feature (`git checkout -b feature/AmazingFeature`)
3. Commit tus cambios (`git commit -m 'Add some AmazingFeature'`)
4. Push a la rama (`git push origin feature/AmazingFeature`)
5. Abre un Pull Request

## 📄 Licencia

Este proyecto está bajo la Licencia MIT. Ver el archivo `LICENSE` para más detalles.

## 🆘 Soporte

Para soporte técnico o preguntas:
- Crear un issue en GitHub
- Contactar al equipo de desarrollo

## 🔄 Actualizaciones

### v1.0.0
- Lanzamiento inicial
- Funcionalidades básicas de gestión
- Interfaz moderna y responsive
- Soporte multilingüe

## 📝 Notas de Desarrollo

### Próximas Características
- Gráficos y estadísticas avanzadas
- Notificaciones push
- Sincronización en la nube
- API REST para integraciones
- Módulo de contabilidad avanzada

### Mejoras Técnicas Planificadas
- Migración a TypeScript
- Testing automatizado
- CI/CD pipeline
- Documentación API
- Optimización de rendimiento

---

**ShimanskiiAdminPro** - La solución completa para la gestión de edificios residenciales.
